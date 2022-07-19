.class Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;
.super Ljava/lang/Object;
.source "CommonServiceLoadAgent.java"

# interfaces
.implements Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListenerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;->this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 130
    const-string v0, "initSecurityGuardManager"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;->this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->resumeDex2Oat()V

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;->this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;

    # getter for: Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->c:I
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->access$100(Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;)I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->endRecord(Ljava/lang/String;)V

    .line 134
    nop

    .line 135
    return-void

    .line 133
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->endRecord(Ljava/lang/String;)V

    throw v1
.end method

.method public onStart()V
    .locals 4

    .line 82
    const-string v0, "initSecurityGuardManager"

    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->startRecord(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "CommonServiceLoadAgent"

    const-string v2, "SecurityGuardManager onStart"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupParam;->ismIsHomeFirstFrameFinish()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupParam;->isPreloadSg()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupParam;->isLoginUserInfoExisted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isProcessStartByClickLauncherIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "SecurityGuardPreInit"

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->getStackTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->sgPreInitTrace:Ljava/lang/String;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->sgInitTime:J

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;->this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;

    # invokes: Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->b()Z
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->access$000(Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;->this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;

    iget-object v2, v2, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 93
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "SG_INIT_HOOK_WAIT_TIME"

    const-string v3, "1000"

    .line 94
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    if-lez v0, :cond_1

    .line 97
    :goto_0
    if-lez v0, :cond_1

    .line 98
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "Sleep 100"

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/StartupParam;->ismIsHomeFirstFrameFinish()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 101
    goto :goto_1

    .line 103
    :cond_0
    add-int/lit8 v0, v0, -0x64

    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    goto :goto_2

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;->this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    # setter for: Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->c:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->access$102(Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;I)I

    .line 113
    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;->this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->pauseDex2Oat()V

    .line 115
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 120
    const-string v0, "initSecurityGuardManager"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;->this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->resumeDex2Oat()V

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent$1;->this$0:Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;

    # getter for: Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->c:I
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->access$100(Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;)I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->endRecord(Ljava/lang/String;)V

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->endRecord(Ljava/lang/String;)V

    throw v1
.end method
