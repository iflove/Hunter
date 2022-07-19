.class public Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;
.super Ljava/lang/Object;
.source "MonitorSPPrivate.java"


# static fields
.field private static a:Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "MonitorPrivate_"

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->c:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->b:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;
    .locals 2

    .line 43
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->c()V

    .line 47
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    .line 39
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 35
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    return-void
.end method

.method private c()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d:Landroid/content/SharedPreferences;

    .line 59
    :cond_0
    return-void
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->e:Landroid/content/SharedPreferences;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 9

    .line 69
    const-string/jumbo v0, "monitor_perfDelayOpen"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "perfDelayOpenS":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateConfigToSP: monitor_perfDelayOpen="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MonitorSPPrivate"

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 72
    .local v4, "perfDelayOpenB":Z
    invoke-direct {p0, v0, v4}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a(Ljava/lang/String;Z)V

    .line 74
    const-string/jumbo v0, "perf_opt_analyse_runnable"

    invoke-static {v0, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "perfAnalyseOpenS":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateConfigToSP: perf_opt_analyse_runnable="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 77
    .local v3, "perfAnalyseOpenB":Z
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method

.method public final c(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
