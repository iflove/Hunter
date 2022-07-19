.class final Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;
.super Ljava/lang/Object;
.source "AppCheckUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->checkAppCovered(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;->val$now:J

    iput-object p3, p0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 52
    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInForeground()Z

    move-result v0

    const-string v1, "AppCheckUtil"

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "don\'t check, app is in foreground"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 57
    :cond_0
    # getter for: Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastCallFrameBackgroundTime:J
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->access$000()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;->val$now:J

    # getter for: Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastCallFrameBackgroundTime:J
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->access$000()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "don\'t check, lastCallFrameBackgroundTime:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->lastCallFrameBackgroundTime:J
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->access$000()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " and now:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;->val$now:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;->val$context:Landroid/content/Context;

    const-string v2, "android.permission.GET_TASKS"

    invoke-static {v0, v2}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 63
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 64
    const-string v0, "don\'t check, no GET_TASKS permission."

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 69
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;->val$context:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 70
    .local v3, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    move-object v4, v2

    .line 71
    .local v4, "tasks":Ljava/util/List;
    move-object v4, v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 73
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object v2, v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "activityName":Ljava/lang/String;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    .line 75
    .local v11, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/quinox/utils/AppCheckUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    const-string v5, "topActivity is still our activity."

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "topActivity is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and packageName is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->createPerformanceBuilderObject()Ljava/lang/Object;

    move-result-object v5

    .line 81
    const-string v6, "AppCoveredByOther"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v11

    move-object v8, v0

    invoke-static/range {v5 .. v10}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->invokePerformanceBuilder(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    .line 82
    .local v5, "performance":Ljava/lang/Object;
    sget-object v6, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_PERFORMANCE:Ljava/lang/Object;

    invoke-static {v6, v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->performance(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v4    # "tasks":Ljava/util/List;
    .end local v5    # "performance":Ljava/lang/Object;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_4
    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method
