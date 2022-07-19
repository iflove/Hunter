.class public Lcom/alipay/mobile/liteprocess/HostInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HostInfoReceiver.java"


# static fields
.field private static a:J

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a()J
    .locals 2

    .line 177
    sget-wide v0, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->b:J

    return-wide v0
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .locals 0
    .param p0, "x1"    # Landroid/content/Intent;

    .line 44
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static b()J
    .locals 2

    .line 181
    sget-wide v0, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->c:J

    return-wide v0
.end method

.method private static b(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 81
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->c(Landroid/content/Intent;)V

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->d(Landroid/content/Intent;)V

    .line 88
    return-void

    .line 90
    :cond_1
    return-void
.end method

.method private static c(Landroid/content/Intent;)V
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "eventString":Ljava/lang/String;
    const-string v1, "com.alipay.android.broadcast.FORCE_LOGOUT_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "LiteProcess"

    if-nez v1, :cond_a

    .line 95
    const-string v1, "com.alipay.security.logout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 96
    const-string v1, "com.alipay.security.login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "switchaccount"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 110
    :cond_0
    const-string v1, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 111
    const-string v1, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    const-string v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    const-string v1, "com.alipay.mobile.framework.ACTIVITY_ALL_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "HostInfoReceiver FRAMEWORK_ACTIVITY_USERLEAVEHINT "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    if-eqz v1, :cond_3

    .line 136
    return-void

    .line 138
    :cond_3
    sput-boolean v2, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    .line 139
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->d()V

    .line 140
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->onMainProcessGotoBackground()V

    .line 142
    :cond_4
    return-void

    .line 112
    :cond_5
    :goto_0
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    if-nez v1, :cond_6

    .line 113
    return-void

    .line 115
    :cond_6
    sput-boolean v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HostInfoReceiver FRAMEWORK_BROUGHT_TO_FOREGROUND "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline2;->a:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/alipay/mobile/liteprocess/Config;->j:Z

    if-eqz v1, :cond_7

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchElapsedTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x2710

    cmp-long v1, v5, v7

    if-lez v1, :cond_7

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v5, "hot startup make pipelineOver true"

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sput-boolean v2, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline2;->a:Z

    goto :goto_1

    .line 121
    :cond_7
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline2;->a:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/alipay/mobile/liteprocess/Config;->o:Z

    if-eqz v1, :cond_8

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "FIRST_FOREGROUND_QUICK_PRELOAD"

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline2;->a()V

    .line 125
    :cond_8
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;->register()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->b:J

    .line 127
    sget-wide v4, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->c:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_9

    .line 128
    sput-wide v1, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->c:J

    .line 130
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->e()V

    .line 131
    sput v3, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->sPreloadIndexCurrent:I

    return-void

    .line 98
    :cond_a
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HostInfoReceiver "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/Config;->w:Z

    if-eqz v1, :cond_b

    .line 100
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b()V

    .line 102
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "FIRST_LOGIN"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 103
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "FIRST_LOGIN and not stop all"

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Not FIRST_LOGIN and stop all"

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->removeMainProcKeepAliveApp()V

    .line 108
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a()V

    return-void
.end method

.method private static d(Landroid/content/Intent;)V
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "enventString":Ljava/lang/String;
    const-string v1, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "LiteProcess"

    if-eqz v1, :cond_1

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HostInfoReceiver FRAMEWORK_BROUGHT_TO_FOREGROUND "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    move-object v4, v2

    .line 149
    .local v4, "msg":Landroid/os/Message;
    move-object v4, v1

    const/16 v5, 0xc

    iput v5, v1, Landroid/os/Message;->what:I

    .line 150
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 151
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v1

    iput v1, v4, Landroid/os/Message;->arg2:I

    .line 152
    invoke-static {v3, v4}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->a:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x1b7740

    cmp-long v1, v5, v7

    if-lez v1, :cond_0

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "refresh log session"

    invoke-interface {v1, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string/jumbo v6, "refreshSession"

    invoke-direct {v3, v6, v2, v5, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->a:J

    .line 164
    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    const-string v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HostInfoReceiver FRAMEWORK_ACTIVITY_USERLEAVEHINT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    move-object v4, v2

    .line 167
    .restart local v4    # "msg":Landroid/os/Message;
    move-object v4, v1

    const/16 v5, 0xb

    iput v5, v1, Landroid/os/Message;->what:I

    .line 168
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 169
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v1

    iput v1, v4, Landroid/os/Message;->arg2:I

    .line 170
    invoke-static {v3, v4}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v3, "gotoBackground"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/Util;->setContext(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->needSupportLiteProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const/4 v0, 0x0

    .line 68
    .local v0, "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    new-instance v2, Lcom/alipay/mobile/liteprocess/HostInfoReceiver$1;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver$1;-><init>(Lcom/alipay/mobile/liteprocess/HostInfoReceiver;Landroid/content/Intent;)V

    const-string v3, "HostInfoReceiver"

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    nop

    .end local v0    # "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    invoke-static {p2}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->b(Landroid/content/Intent;)V

    .line 78
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
