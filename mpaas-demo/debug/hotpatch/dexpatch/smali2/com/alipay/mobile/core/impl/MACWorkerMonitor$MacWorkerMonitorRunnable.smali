.class public Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;
.super Ljava/lang/Object;
.source "MACWorkerMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/core/impl/MACWorkerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MacWorkerMonitorRunnable"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/core/impl/MACWorkerMonitor;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/mobile/core/impl/MACWorkerMonitor;
    .param p2, "message"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->this$0:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->a:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->b:J

    .line 77
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->this$0:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    # getter for: Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->d:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->access$000(Lcom/alipay/mobile/core/impl/MACWorkerMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->this$0:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    # getter for: Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->c:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->access$100(Lcom/alipay/mobile/core/impl/MACWorkerMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->getStackTraceString(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 85
    .local v2, "lastStackTrace":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 91
    .local v0, "waitCount":I
    :cond_2
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    # getter for: Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->b:J
    invoke-static {}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->access$200()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v3

    .line 95
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->this$0:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    # getter for: Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->d:Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->access$000(Lcom/alipay/mobile/core/impl/MACWorkerMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 96
    return-void

    .line 98
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->this$0:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    # getter for: Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->c:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->access$100(Lcom/alipay/mobile/core/impl/MACWorkerMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->getStackTraceString(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v1, "currentStackTrace":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    return-void

    .line 102
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_5
    move-object v2, v1

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_1
    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    .line 113
    .end local v1    # "currentStackTrace":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "sycnStartGestureIfNecessary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    const-string/jumbo v1, "onCallAround"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    const-string/jumbo v1, "wait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    const-string v1, "MACWorkerMonitor"

    const-string v3, "MACMonitor gesture is up, no report."

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 119
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->this$0:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;->b:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->handleFrameWorkerPending(JILjava/lang/String;)V

    .line 121
    .end local v0    # "waitCount":I
    .end local v2    # "lastStackTrace":Ljava/lang/String;
    :cond_7
    return-void
.end method
