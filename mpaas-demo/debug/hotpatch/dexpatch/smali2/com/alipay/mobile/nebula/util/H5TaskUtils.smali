.class public Lcom/alipay/mobile/nebula/util/H5TaskUtils;
.super Ljava/lang/Object;
.source "H5TaskUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTaskInfoMatchTopActivity(Landroid/app/Activity;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .line 32
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 33
    return-object v0

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 37
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    move-object v2, v0

    .line 38
    .local v2, "activityManager":Landroid/app/ActivityManager;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 39
    return-object v0

    .line 41
    :cond_1
    const v1, 0x7fffffff

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    move-object v3, v0

    .line 42
    .local v3, "tasks":Ljava/util/List;
    move-object v3, v1

    if-nez v1, :cond_2

    .line 43
    return-object v0

    .line 45
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    .local v4, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object v4, v5

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 47
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 48
    return-object v4

    .line 50
    .end local v4    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    goto :goto_0

    .line 53
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "tasks":Ljava/util/List;
    :cond_4
    nop

    .line 54
    return-object v0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    return-object v0
.end method

.method public static getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 19
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 20
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    move-object v2, v0

    .line 21
    .local v2, "activityManager":Landroid/app/ActivityManager;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 22
    return-object v0

    .line 24
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 25
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    :catchall_0
    move-exception v1

    .line 26
    return-object v0
.end method
