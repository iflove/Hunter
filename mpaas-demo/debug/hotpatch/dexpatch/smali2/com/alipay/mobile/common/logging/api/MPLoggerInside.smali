.class public Lcom/alipay/mobile/common/logging/api/MPLoggerInside;
.super Ljava/lang/Object;
.source "MPLoggerInside.java"


# static fields
.field private static a:Z

.field private static b:Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "numRunning":I
    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 44
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 45
    .local v3, "taskList":Ljava/util/List;
    move-object v3, v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 47
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 48
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 53
    goto :goto_1

    .line 55
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    goto :goto_0

    .line 59
    .end local v3    # "taskList":Ljava/util/List;
    :cond_2
    goto :goto_1

    .line 58
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :goto_1
    return v0
.end method

.method public static init(Landroid/app/Application;Lcom/alipay/mobile/common/logging/api/BizType;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;

    .line 15
    if-eqz p0, :cond_1

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logging/api/MPLoggerInside;->a:Z

    .line 23
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->init(Landroid/content/Context;)V

    .line 25
    sget-object v0, Lcom/alipay/mobile/common/logging/api/MPLoggerInside;->b:Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;

    if-nez v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/MPLoggerInside;->a(Landroid/content/Context;)I

    move-result v0

    .line 27
    .local v0, "taskRunningActivityCount":I
    new-instance v1, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;-><init>(I)V

    .line 28
    sput-object v1, Lcom/alipay/mobile/common/logging/api/MPLoggerInside;->b:Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->addBizType(Lcom/alipay/mobile/common/logging/api/BizType;)V

    .line 29
    sget-object v1, Lcom/alipay/mobile/common/logging/api/MPLoggerInside;->b:Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 30
    .end local v0    # "taskRunningActivityCount":I
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->addBizType(Lcom/alipay/mobile/common/logging/api/BizType;)V

    .line 33
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/MPLoggerInside;->b:Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_CLIENT:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->addBizType(Lcom/alipay/mobile/common/logging/api/BizType;)V

    .line 34
    return-void

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isNeedUploadInMainProcess()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/alipay/mobile/common/logging/api/MPLoggerInside;->a:Z

    return v0
.end method
