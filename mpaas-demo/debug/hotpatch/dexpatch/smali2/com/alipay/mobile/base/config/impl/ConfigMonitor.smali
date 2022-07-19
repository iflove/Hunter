.class public Lcom/alipay/mobile/base/config/impl/ConfigMonitor;
.super Ljava/lang/Object;
.source "ConfigMonitor.java"


# static fields
.field public static final BIZ_TYPE:Ljava/lang/String; = "mPaaS_ConfigService_Android"

.field public static final CONFIGSDK_NOTIFY:Ljava/lang/String; = "CONFIGSDK-NOTIFY"

.field private static INSTANCE:Lcom/alipay/mobile/base/config/impl/ConfigMonitor; = null

.field public static final MONITOR_KEY:Ljava/lang/String; = "apconfigDrill"

.field public static final SEEDID:Ljava/lang/String; = "APConfig_SeedId"

.field private static final SP_NAME:Ljava/lang/String; = "ConfigMonitor"

.field private static final TAG:Ljava/lang/String; = "ConfigMonitor"

.field public static final UCID:Ljava/lang/String; = "APConfig_UC"


# instance fields
.field private configService:Lcom/alipay/mobile/base/config/ConfigService;

.field private mConfigSyncReporter:Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "ConfigMonitor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;
    .locals 2

    const-class v0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->INSTANCE:Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    invoke-direct {v1}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;-><init>()V

    sput-object v1, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->INSTANCE:Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    .line 38
    :cond_0
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->INSTANCE:Lcom/alipay/mobile/base/config/impl/ConfigMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKey(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "ConfigMonitor"

    const-string v3, "getKey,key is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private putKey(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ConfigMonitor"

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "putKey,key is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 129
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "mEditor is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method public getConfigSyncReporter()Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->mConfigSyncReporter:Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;

    return-object v0
.end method

.method public logKeyArrived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ConfigMonitor"

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "logKeyArrived value =  null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "apconfigDrill_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getKey(Ljava/lang/String;)Z

    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "is loged key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 100
    :cond_1
    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 101
    .local v4, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v4, v2

    const-string/jumbo v5, "mPaaS_ConfigService_Android"

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 102
    const-string v2, "APConfig_UC"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 103
    const-string v2, "APConfig_SeedId"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 104
    const-string v2, "apconfigDrill"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v2

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "log key = apconfigDrill value = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->putKey(Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method public logRpcSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "resCode"    # Ljava/lang/String;
    .param p3, "lastResponseTime"    # Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 79
    .local v1, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    const-string/jumbo v2, "mPaaS_ConfigService_Android"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 80
    const-string v0, "APConfig_UC"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 81
    const-string v0, "APConfig_SeedId"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "rpc"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 85
    const-string v0, "lastResponseTime"

    invoke-virtual {v1, v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->CONFIG_SERVICE:Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v3, "com.alipay.android.phone.mobilesdk.commonbizservice.BuildConfig"

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public reportBizRequest(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ConfigMonitor"

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "reportBizRequest key is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 53
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->mConfigSyncReporter:Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;

    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "mConfigSyncReporter is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_2

    .line 59
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    .line 60
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_3

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "configService is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 67
    :cond_3
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mConfigSyncReporter reportBizRequest key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->mConfigSyncReporter:Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;

    const-string v3, "CONFIGSDK-NOTIFY"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, p1, v0, v4}, Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;->reportBizRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v0    # "value":Ljava/lang/String;
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public setConfigSyncReporter(Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;)V
    .locals 0
    .param p1, "configSyncReporter"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;

    .line 138
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->mConfigSyncReporter:Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;

    .line 139
    return-void
.end method
