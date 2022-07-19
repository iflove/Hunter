.class public Lcom/alipay/mobile/nebula/view/H5Progress;
.super Landroid/widget/ProgressBar;
.source "H5Progress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;,
        Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = 0x4b0

.field public static final MIN_DURATION:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "H5Progress"


# instance fields
.field private curDuration:J

.field private isRunnableWorking:Z

.field private lastProgress:I

.field private lastTarget:I

.field private mHandler:Landroid/os/Handler;

.field private mUpdateRunnable:Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

.field private minDuration:J

.field private nextVisibility:I

.field private notifier:Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

.field private originTime:J

.field private startTime:J

.field private targetProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->isRunnableWorking:Z

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;-><init>(Lcom/alipay/mobile/nebula/view/H5Progress;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mUpdateRunnable:Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->isRunnableWorking:Z

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;-><init>(Lcom/alipay/mobile/nebula/view/H5Progress;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mUpdateRunnable:Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->isRunnableWorking:Z

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;-><init>(Lcom/alipay/mobile/nebula/view/H5Progress;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mUpdateRunnable:Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->init()V

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebula/view/H5Progress;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;
    .param p1, "x1"    # Z

    .line 18
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->isRunnableWorking:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebula/view/H5Progress;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebula/view/H5Progress;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/view/H5Progress;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 18
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->startTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/view/H5Progress;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 18
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->curDuration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebula/view/H5Progress;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 18
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->lastTarget:I

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebula/view/H5Progress;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 18
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->targetProgress:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebula/view/H5Progress;)Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->notifier:Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebula/view/H5Progress;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 18
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->nextVisibility:I

    return v0
.end method

.method static synthetic access$702(Lcom/alipay/mobile/nebula/view/H5Progress;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;
    .param p1, "x1"    # I

    .line 18
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->nextVisibility:I

    return p1
.end method

.method static synthetic access$801(Lcom/alipay/mobile/nebula/view/H5Progress;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;
    .param p1, "x1"    # I

    .line 18
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebula/view/H5Progress;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 18
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->lastProgress:I

    return v0
.end method

.method static synthetic access$902(Lcom/alipay/mobile/nebula/view/H5Progress;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5Progress;
    .param p1, "x1"    # I

    .line 18
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->lastProgress:I

    return p1
.end method

.method private init()V
    .locals 2

    .line 68
    const-wide/16 v0, 0x4b0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->minDuration:J

    .line 69
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->setMax(I)V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->nextVisibility:I

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->reset()V

    .line 72
    return-void
.end method

.method private linearProgress()V
    .locals 6

    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "H5Progress"

    const-string v1, "isIndeterminate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 112
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->minDuration:J

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->curDuration:J

    .line 113
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->targetProgress:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->lastTarget:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 114
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->curDuration:J

    .line 117
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->targetProgress:I

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->lastTarget:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 118
    .local v1, "deltaProgress":I
    move v1, v0

    if-lez v0, :cond_3

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->curDuration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 124
    .local v0, "curPeriod":I
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mUpdateRunnable:Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mUpdateRunnable:Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->setPeriodValue(I)V

    .line 126
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mUpdateRunnable:Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->setdeltaProgressValue(I)V

    .line 127
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->mUpdateRunnable:Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void

    .line 119
    .end local v0    # "curPeriod":I
    :cond_3
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 2

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->originTime:J

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->targetProgress:I

    .line 77
    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->lastTarget:I

    .line 78
    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->lastProgress:I

    .line 79
    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .line 140
    const-string v0, "H5Progress"

    const-string v1, "hideProgress"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    return-void
.end method

.method public setMinDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 82
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->minDuration:J

    .line 83
    return-void
.end method

.method public setNotifier(Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->notifier:Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    .line 65
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVisibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Progress"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->isRunnableWorking:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->nextVisibility:I

    .line 137
    return-void

    .line 133
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public updateProgress(I)V
    .locals 9
    .param p1, "progress"    # I

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    .local v0, "current":J
    iget-wide v2, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->originTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 88
    iput-wide v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->originTime:J

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->getMax()I

    move-result v2

    .line 92
    .local v2, "max":I
    int-to-double v3, p1

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double v3, v3, v5

    int-to-double v5, v2

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 94
    move p1, v3

    iget v4, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->lastProgress:I

    if-lt v3, v4, :cond_2

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    iput v4, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->lastTarget:I

    .line 101
    iput-wide v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->startTime:J

    .line 102
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress;->targetProgress:I

    .line 103
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5Progress;->linearProgress()V

    .line 104
    return-void

    .line 96
    :cond_2
    :goto_0
    return-void
.end method
