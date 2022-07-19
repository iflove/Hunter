.class public Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;
.super Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;
.source "BackgroundCpuUsageWorker.java"


# instance fields
.field private volatile b:Z

.field private c:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

.field private f:J

.field private g:Z

.field private final h:Ljava/lang/Runnable;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 96
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->b:Z

    .line 30
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->f:J

    .line 33
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->g:Z

    .line 35
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->h:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->i:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;-><init>(ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->c:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    .line 99
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$3;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;)V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;
    .param p1, "x1"    # J

    .line 22
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->f:J

    return-wide p1
.end method

.method private a(F)V
    .locals 8
    .param p1, "cpuUsage"    # F

    .line 119
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->g:Z

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sample cpu thread information, rate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundCpuUsageWorker"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v0

    iget v0, v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->g:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skip sample cpu thread information, rate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 126
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v4

    iget v4, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    :cond_0
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    .line 131
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->c:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->c()Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    move-result-object v0

    move-object v3, v1

    .line 134
    .local v3, "pui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;
    move-object v3, v0

    if-nez v0, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->c()V

    .line 136
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    :cond_2
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "Can\'t dump process usage information, stop worker!"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    move-object v4, v1

    .line 144
    .local v4, "beforePUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;
    move-object v4, v0

    if-nez v0, :cond_4

    .line 145
    iput-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 148
    :cond_4
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;)V

    .line 149
    invoke-direct {p0, v4, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;)V

    .line 151
    iget-object v0, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "Capture worker has been skipped due to empty thread list of process after filter operation."

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->c:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    iget-object v5, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Ljava/util/List;)V

    .line 160
    iget-object v0, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b(Ljava/util/List;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 164
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v5

    iget v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->j:I

    if-ge v0, v5, :cond_6

    .line 166
    iput-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v0

    iget-wide v0, v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->i:J

    .line 169
    .local v0, "timeGap":J
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->h:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->g:Z

    .line 171
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Capture worker re-schedule, time gap: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v0    # "timeGap":J
    return-void

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 174
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v5

    iget-object v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->f:[Ljava/lang/StackTraceElement;

    .line 173
    invoke-static {v0, v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer;->a(Ljava/util/List;[Ljava/lang/StackTraceElement;)Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "data":Ljava/util/List;
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 176
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    .line 177
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v5, "Start notify high cpu usage rate."

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(ILjava/lang/Object;)V

    .line 180
    .end local v0    # "data":Ljava/util/List;
    return-void

    .line 120
    .end local v3    # "pui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;
    .end local v4    # "beforePUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only allow work in specified thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;)V
    .locals 7
    .param p1, "pui"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 184
    .local v1, "ignoreThreads":[Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_4

    array-length v0, v1

    if-nez v0, :cond_0

    goto :goto_2

    .line 187
    :cond_0
    iget-object v0, p1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    .line 191
    .local v2, "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 192
    .local v5, "ignore":Ljava/lang/String;
    iget-object v6, v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->a:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 194
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Ignore thread, name: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BackgroundCpuUsageWorker"

    invoke-interface {v3, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    goto :goto_0

    .line 191
    .end local v5    # "ignore":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 199
    .end local v2    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    :cond_3
    return-void

    .line 185
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_4
    :goto_2
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;)V
    .locals 11
    .param p1, "beforePUI"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;
    .param p2, "afterPUI"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    .line 204
    iget-object v0, p2, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "afterIter":Ljava/util/Iterator;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 209
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    .line 211
    .local v3, "after":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    iget-object v4, p1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 212
    .local v4, "beforeIter":Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 213
    .local v5, "find":Z
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 214
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    .line 215
    .local v2, "before":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    move-object v2, v6

    iget-object v6, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->b:Ljava/lang/String;

    iget-object v7, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->c:Ljava/lang/String;

    iget-object v7, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 218
    const/4 v5, 0x1

    .line 219
    iget-object v6, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->a()J

    move-result-wide v6

    iget-object v8, v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    invoke-virtual {v8}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->a()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v6, v6, v7

    iget-object v7, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    iget-wide v7, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->m:J

    iget-object v9, v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    iget-wide v9, v9, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->m:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    div-float/2addr v6, v7

    .line 221
    .local v1, "rate":F
    move v1, v6

    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v7}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v7

    iget v7, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->h:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found high occupancy thread("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "), rate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 223
    invoke-virtual {v8}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v8

    iget v8, v8, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    const-string v8, "BackgroundCpuUsageWorker"

    invoke-interface {v6, v8, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    goto :goto_1

    .line 226
    :cond_2
    const/4 v5, 0x0

    .line 229
    .end local v1    # "rate":F
    .end local v2    # "before":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    :cond_3
    :goto_1
    if-nez v5, :cond_0

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 233
    .end local v3    # "after":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    .end local v4    # "beforeIter":Ljava/util/Iterator;
    .end local v5    # "find":Z
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;
    .param p1, "x1"    # F

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    .line 22
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    .line 22
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->c:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    .line 22
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->b:Z

    return v0
.end method

.method private d()Z
    .locals 2

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    .line 22
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    .line 22
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->f:J

    return-wide v0
.end method

.method private e()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void
.end method

.method static synthetic f(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    .line 22
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method private f()V
    .locals 6

    .line 289
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "BackgroundCpuUsageWorker"

    const-string v2, "Process background event"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->b:Z

    .line 292
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->h:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 294
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v2

    iget-wide v2, v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 293
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-void
.end method

.method private g()V
    .locals 3

    .line 298
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "BackgroundCpuUsageWorker"

    const-string v2, "Process foreground event"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->b:Z

    .line 300
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "eventType"    # I

    .line 262
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a()Z

    move-result v0

    const-string v1, "BackgroundCpuUsageWorker"

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "Trace event but has been stopped."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void

    .line 267
    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e()V

    .line 280
    :goto_0
    return-void

    .line 272
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->f()V

    .line 273
    return-void

    .line 269
    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    return-void

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "Trace event error"

    invoke-interface {v2, v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final b()V
    .locals 2

    .line 242
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;->b()V

    .line 243
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->f()V

    .line 251
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 255
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;->c()V

    .line 256
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method
