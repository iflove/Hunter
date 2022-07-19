.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$17;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->registerOtherProcessExceptionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 3276
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$17;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 3280
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$17;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1300(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 3281
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3282
    .local v1, "threadName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sub process ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ) throws an UncaughtException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3284
    .local v2, "message":Ljava/lang/String;
    const-string v3, "FinalizerWatchdogDaemon"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "LauncherApplication"

    if-eqz v3, :cond_0

    .line 3285
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "The exception will not be wrote and uploaded to mdap, print this message in \'applog\' only. "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3286
    return-void

    .line 3288
    :cond_0
    invoke-static {v4, v2, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3293
    const-string v3, "main"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 3297
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->shouldReportOtherProcessException(J)Z

    move-result v3

    .line 3300
    if-eqz v3, :cond_1

    .line 3301
    sget-object v3, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_IGNORE_CRASH:Ljava/lang/Object;

    invoke-static {v3, p2, v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3303
    :cond_1
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 3304
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 3305
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    .line 3310
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->shouldReportOtherProcessOtherException(J)Z

    move-result v3

    .line 3313
    if-eqz v3, :cond_3

    .line 3314
    sget-object v3, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_IGNORE_CRASH:Ljava/lang/Object;

    invoke-static {v3, p2, v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3316
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 3318
    return-void
.end method
