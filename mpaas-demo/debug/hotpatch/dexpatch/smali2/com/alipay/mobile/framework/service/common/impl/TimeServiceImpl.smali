.class public Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/TimeService;
.source "TimeServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TimeService;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J

    .line 50
    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->c:Z

    .line 61
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 62
    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->addRpcHeaderListener(Lcom/alipay/mobile/common/rpc/RpcHeaderListener;)V

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 64
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)V

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 71
    return-void
.end method

.method private a()Z
    .locals 6

    .line 168
    const-class v0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-wide v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-wide v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b()V

    return-void
.end method

.method static synthetic access$102(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->c:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    .line 33
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;
    .param p1, "x1"    # J

    .line 33
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    .line 33
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;
    .param p1, "x1"    # J

    .line 33
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J

    return-wide p1
.end method

.method private b()V
    .locals 5

    .line 177
    const-class v0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    monitor-enter v0

    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->getServerTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 180
    .local v1, "storedServerLocalGap":J
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 181
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "STORED_SERVER_LOCAL_TIME_GAP"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    .end local v1    # "storedServerLocalGap":J
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getServerTime()J
    .locals 10

    .line 79
    const-class v0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J

    .line 84
    iput-wide v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J

    .line 86
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->c:Z

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    const-string v2, "BIZ_TIME_SERVICE"

    const-string v3, "SERVER_TIME_NOT_AVAILABLE"

    const-string v4, "1000"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->keyBizTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 91
    .local v1, "rTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "TimeService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "no server time, return local time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    monitor-exit v0

    return-wide v1

    .line 95
    .end local v1    # "rTime":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J

    sub-long/2addr v1, v3

    .line 96
    .local v1, "localGap":J
    iget-wide v3, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J

    add-long/2addr v3, v1

    .line 97
    .local v3, "rTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "TimeService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "return server time:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " and stored server time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " localGap:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " localTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    monitor-exit v0

    return-wide v3

    .line 99
    .end local v1    # "localGap":J
    .end local v3    # "rTime":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServerTime(Z)J
    .locals 3
    .param p1, "timeSensitive"    # Z

    .line 110
    const-class v0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->getServerTime()J

    move-result-wide v1

    .line 126
    monitor-exit v0

    return-wide v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServerTimeMayOffline()J
    .locals 12

    .line 136
    const-class v0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->getServerTime()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 140
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 141
    .local v3, "spf":Landroid/content/SharedPreferences;
    move-object v3, v1

    const-string v4, "STORED_SERVER_LOCAL_TIME_GAP"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const-string v1, "STORED_SERVER_LOCAL_TIME_GAP"

    const-wide/16 v4, 0x0

    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 145
    .local v1, "storedServerLocalGap":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 146
    .local v4, "localTime":J
    move-wide v4, v6

    add-long/2addr v6, v1

    .line 147
    .local v6, "rTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string v9, "TimeService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "no server time, return offline time:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " + storedGap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    monitor-exit v0

    return-wide v6

    .line 151
    .end local v1    # "storedServerLocalGap":J
    .end local v4    # "localTime":J
    .end local v6    # "rTime":J
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->c:Z

    if-eqz v1, :cond_2

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    const-string v4, "BIZ_TIME_SERVICE"

    const-string v5, "SERVER_TIME_NOT_AVAILABLE"

    const-string v6, "1000"

    invoke-interface {v1, v4, v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->keyBizTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 156
    .local v1, "rTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "TimeService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "no server time, return local time:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    monitor-exit v0

    return-wide v1

    .line 160
    .end local v1    # "rTime":J
    .end local v3    # "spf":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 189
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 194
    return-void
.end method
