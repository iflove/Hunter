.class public Lcom/alipay/mobile/h5container/api/H5AvailablePageData;
.super Ljava/lang/Object;
.source "H5AvailablePageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;,
        Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5AvailablePageData"


# instance fields
.field private didFinishedLoadDate:J

.field private handler:Landroid/os/Handler;

.field private isWaitForStopLoading:Z

.field private isWaitForStopLoadingWithLoc:Z

.field private loadingReqsWithLoc:I

.field private pageStartTime:J

.field private stopLoadingTime:J

.field private stopLoadingTimeRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

.field private stopLoadingTimeWithLoc:J

.field private stopLoadingTimeWithLocRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

.field private waitForStopTime:J

.field private waitForStopTimeWithLoc:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->clear()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;-><init>(Lcom/alipay/mobile/h5container/api/H5AvailablePageData;Lcom/alipay/mobile/h5container/api/H5AvailablePageData$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

    .line 32
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;-><init>(Lcom/alipay/mobile/h5container/api/H5AvailablePageData;Lcom/alipay/mobile/h5container/api/H5AvailablePageData$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLocRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 52
    const-string v0, "H5AvailablePageData"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->didFinishedLoadDate:J

    .line 54
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    .line 55
    iput-boolean v2, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoading:Z

    .line 56
    iput-boolean v2, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoadingWithLoc:Z

    .line 57
    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTime:J

    .line 58
    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    .line 59
    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTimeWithLoc:J

    .line 60
    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    .line 61
    return-void
.end method

.method public getPageStartTime()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->pageStartTime:J

    return-wide v0
.end method

.method public getStopLoadingTime()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    return-wide v0
.end method

.method public getStopLoadingTimeWithLoc()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    return-wide v0
.end method

.method public reportDidFinishedLoadDate(J)V
    .locals 2
    .param p1, "date"    # J

    .line 64
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "reportDidFinishedLoadDate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->didFinishedLoadDate:J

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopLoading()V

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopLoadingWithLoc()V

    .line 68
    return-void
.end method

.method public reportLocEnd()V
    .locals 5

    .line 93
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "reportLocEnd"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    .line 95
    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopLoadingWithLoc()V

    .line 98
    :cond_0
    return-void
.end method

.method public reportLocStart()V
    .locals 5

    .line 85
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "reportLocStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    .line 87
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoadingWithLoc:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopWaitForStopLoadingWithLoc()V

    .line 90
    :cond_0
    return-void
.end method

.method public reportReqEnd()V
    .locals 5

    .line 78
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "reportReqEnd"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopLoading()V

    .line 82
    :cond_0
    return-void
.end method

.method public reportReqStart()V
    .locals 5

    .line 71
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "reportReqStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoading:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopWaitForStopLoading()V

    .line 75
    :cond_0
    return-void
.end method

.method public setPageStartTime(J)V
    .locals 0
    .param p1, "pageStartTime"    # J

    .line 40
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->pageStartTime:J

    .line 41
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .line 131
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "stopLoading"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    .line 133
    return-void
.end method

.method public stopLoadingWithLoc()V
    .locals 2

    .line 136
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "stopLoadingWithLoc"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTimeWithLoc:J

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    .line 138
    return-void
.end method

.method public stopWaitForStopLoading()V
    .locals 2

    .line 125
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "stopWaitForStopLoading"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoading:Z

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public stopWaitForStopLoadingWithLoc()V
    .locals 2

    .line 110
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "stopWaitForStopLoadingWithLoc"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoadingWithLoc:Z

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLocRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public waitForStopLoading()V
    .locals 5

    .line 116
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->didFinishedLoadDate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 117
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "waitForStopLoading"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoading:Z

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTime:J

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_0
    return-void
.end method

.method public waitForStopLoadingWithLoc()V
    .locals 5

    .line 101
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->didFinishedLoadDate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    if-nez v0, :cond_0

    .line 102
    const-string v0, "H5AvailablePageData"

    const-string/jumbo v1, "waitForStopLoadingWithLoc"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoadingWithLoc:Z

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTimeWithLoc:J

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLocRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :cond_0
    return-void
.end method
