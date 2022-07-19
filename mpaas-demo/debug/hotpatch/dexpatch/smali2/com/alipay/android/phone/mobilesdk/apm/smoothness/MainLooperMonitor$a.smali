.class final Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "MainLooperMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)V
    .locals 2

    .line 701
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    .line 703
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 701
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 14

    .line 707
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 709
    .local v0, "nowTime":J
    const/4 v2, 0x0

    .line 710
    .local v2, "needReport":Z
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->b(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 711
    return-void

    .line 713
    :cond_0
    const-class v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    monitor-enter v3

    .line 714
    :try_start_0
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->b:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 715
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->b:J

    .line 716
    monitor-exit v3

    return-void

    .line 718
    :cond_1
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 719
    iput-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->b:J

    .line 720
    monitor-exit v3

    return-void

    .line 722
    :cond_2
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->b:J

    iget-object v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v8}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-eqz v10, :cond_3

    .line 723
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->b:J

    .line 724
    monitor-exit v3

    return-void

    .line 726
    :cond_3
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->b:J

    sub-long v4, v0, v4

    .line 727
    .local v6, "period":J
    move-wide v6, v4

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->e()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-ltz v10, :cond_4

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->b:J

    iget-object v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v8}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-eqz v10, :cond_4

    .line 728
    const/4 v2, 0x1

    .line 729
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    iget-wide v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->b:J

    invoke-static {v4, v8, v9}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;J)J

    .line 731
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    if-nez v2, :cond_5

    .line 733
    return-void

    .line 735
    :cond_5
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;->NewMainOnly()Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;

    move-result-object v4

    .line 736
    .local v3, "anrError":Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
    move-object v3, v4

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, "stackTrace":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 738
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    const/16 v8, 0xa

    if-lt v5, v8, :cond_6

    .line 739
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 741
    :cond_6
    return-void

    .line 743
    :cond_7
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 747
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    move-object v9, v8

    .line 748
    .local v9, "params":Ljava/util/Map;
    move-object v9, v5

    const-string/jumbo v10, "stackFrame"

    invoke-interface {v5, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v5, "currentPage"

    iget-object v10, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v10}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->e(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->e(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 752
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->b()Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v8, "currentUrl":Ljava/lang/String;
    move-object v8, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 754
    const-string v5, "currentUrl"

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .end local v8    # "currentUrl":Ljava/lang/String;
    :cond_8
    const-string v5, "isTinyApp"

    iget-object v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v8}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "1"

    goto :goto_0

    :cond_9
    const-string v8, "0"

    :goto_0
    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v5, "lagAppId"

    iget-object v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v8}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->g(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    const-string v5, "appType"

    iget-object v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v8}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->h(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string v5, "lagTime"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string v5, "current_startup"

    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getClientCurrentStartupTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->lag(Ljava/util/Map;)V

    .line 766
    .end local v9    # "params":Ljava/util/Map;
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v8, "MainLooperMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AppID:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v10}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->g(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isTinyApp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v10}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " ActivityName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v10}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->e(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " showing takes around "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->e()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->e()J

    move-result-wide v10

    const-wide/16 v12, 0xfa

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    return-void

    .line 731
    .end local v3    # "anrError":Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
    .end local v4    # "stackTrace":Ljava/lang/String;
    .end local v6    # "period":J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
