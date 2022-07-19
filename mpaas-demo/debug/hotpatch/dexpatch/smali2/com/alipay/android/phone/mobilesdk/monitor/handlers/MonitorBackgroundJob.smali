.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;
.super Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;
.source "MonitorBackgroundJob.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundLevel"    # I

    .line 28
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->a:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->b:I

    .line 31
    return-void
.end method

.method private d()V
    .locals 13

    const-string v0, "MonitorBackgroundJob"

    const-string v1, ""

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->d:Z

    if-eqz v2, :cond_1

    .line 64
    return-void

    .line 66
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->d:Z

    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "Monitor_InterProcessConfig_KeyList"

    invoke-static {v4, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 72
    .local v6, "sKeyList":Ljava/lang/String;
    move-object v6, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "##"

    if-nez v4, :cond_5

    .line 73
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "syncConfigInterProcess, keyList: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v0, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v8, v5

    .line 76
    .local v8, "keyList":[Ljava/lang/String;
    array-length v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_4

    aget-object v12, v4, v11

    .line 77
    .local v5, "key":Ljava/lang/String;
    move-object v5, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 80
    invoke-static {v5, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 81
    .local v10, "value":Ljava/lang/String;
    move-object v10, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 84
    if-nez v2, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    move-object v2, v12

    .line 87
    :cond_2
    invoke-interface {v2, v5, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    move-object v5, v8

    goto :goto_1

    .line 72
    .end local v8    # "keyList":[Ljava/lang/String;
    :cond_5
    move-object v4, v5

    move-object v10, v4

    .line 90
    :goto_1
    const-string v8, "Monitor_InterProcessConfig_KeyDelete"

    invoke-static {v8, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v5, "sKeyDel":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "syncConfigInterProcess, keyDel: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v0, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v4, "keyDel":[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_8

    aget-object v9, v1, v8

    .line 96
    .local v10, "key":Ljava/lang/String;
    move-object v10, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 99
    if-nez v2, :cond_6

    .line 100
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    move-object v2, v9

    .line 102
    :cond_6
    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    .end local v10    # "key":Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 105
    .end local v4    # "keyDel":[Ljava/lang/String;
    :cond_8
    if-eqz v2, :cond_9

    .line 106
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "sKeyDel":Ljava/lang/String;
    .end local v6    # "sKeyList":Ljava/lang/String;
    :cond_9
    :goto_3
    iput-boolean v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->d:Z

    .line 113
    return-void

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "t":Ljava/lang/Throwable;
    goto :goto_3

    .line 112
    :catchall_1
    move-exception v0

    iput-boolean v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->d:Z

    throw v0
.end method

.method private e()Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->a:Landroid/content/Context;

    const-string v1, "Monitor_SyncConfigInterProcess"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "time to run, backgroundLevel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitorBackgroundJob"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->d()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isMonitorBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->b:I

    if-ne v0, v1, :cond_1

    .line 48
    invoke-static {v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setStrictBackground(Z)V

    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 51
    invoke-static {v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setRelaxedBackground(Z)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "is no longer in background"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->c:Z

    .line 57
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;->c:Z

    return v0
.end method
