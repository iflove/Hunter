.class public Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static b:Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;


# instance fields
.field private final a:J

.field private final c:Landroid/content/Context;

.field private d:Z

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->a:J

    .line 26
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->e:J

    .line 27
    iput-wide v0, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->f:J

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->g:J

    .line 32
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->c:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->a()V

    .line 34
    return-void
.end method

.method private a()V
    .locals 5

    .line 37
    iget-boolean v0, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->d:Z

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->d:Z

    .line 39
    iget-object v1, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "mpaas_sp"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/32 v2, 0x1b7740

    const-string v4, "aliveReportIntervalTime"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->f:J

    .line 40
    invoke-static {v0}, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->trackClickEvents(Z)V

    .line 41
    invoke-static {v0}, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->trackPageEvents(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method public static getChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;
    .locals 2

    .line 46
    sget-object v0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->b:Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->b:Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;

    invoke-direct {v1}, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;-><init>()V

    sput-object v1, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->b:Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->b:Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;

    return-object v0
.end method

.method public static monitorLauncherTime(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->monitorLauncherTime(Landroid/content/Context;ZZZ)V

    .line 116
    return-void
.end method

.method public static monitorLauncherTime(Landroid/content/Context;ZZZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isUpgrade"    # Z
    .param p2, "coldStart"    # Z
    .param p3, "hasLaunchAD"    # Z

    .line 123
    invoke-static {p0}, Lcom/mpaas/mas/adapter/api/MPLogger;->reportLaunchTime(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public static reportUserActive(Ljava/lang/String;)V
    .locals 0
    .param p0, "userId"    # Ljava/lang/String;

    .line 93
    invoke-static {p0}, Lcom/mpaas/mas/adapter/api/MPLogger;->reportUserLogin(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static reportUserRegister(Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 99
    .local v1, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    const-string v2, "alivereport"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 100
    const-string v0, "register"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    const-string v2, "event"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 104
    return-void
.end method

.method public static trackClickEvents(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .line 130
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->autoTrackClick(Z)V

    .line 131
    return-void
.end method

.method public static trackPageEvents(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .line 137
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->autoTrackPage(Z)V

    .line 138
    return-void
.end method

.method public static uploadLogImmediately()V
    .locals 0

    .line 108
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->uploadAll()V

    .line 109
    return-void
.end method


# virtual methods
.method public getActiveIntervalTime()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->f:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportDeviceActive()V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->shouldReportActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->e:J

    .line 85
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->reportClientLaunch()V

    .line 87
    :cond_0
    return-void
.end method

.method public setActiveIntervalTime(J)V
    .locals 3
    .param p1, "reportAliveInterval"    # J

    .line 65
    iput-wide p1, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->f:J

    .line 66
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->c:Landroid/content/Context;

    const-string v1, "mpaas_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aliveReportIntervalTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/mpaas/mas/adapter/api/MPLogger;->setChannelId(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setLastReportAliveTime(J)V
    .locals 0
    .param p1, "lastReportAliveTime"    # J

    .line 57
    iput-wide p1, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->e:J

    .line 58
    return-void
.end method

.method public setReportAliveInterval(J)V
    .locals 0
    .param p1, "time"    # J

    .line 61
    iput-wide p1, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->g:J

    .line 62
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/mpaas/mas/adapter/api/MPLogger;->setUserId(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public shouldReportActive()Z
    .locals 5

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->e:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/mpaas/mpaasadapter/api/DeprecatedMPLogger;->getActiveIntervalTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
