.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;
.super Ljava/lang/Object;
.source "SmoothnessHandler.java"


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;Z)Landroid/os/Bundle;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Z

    const-string v0, "SmoothnessHandler"

    const-string v1, ""

    .line 185
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StorageUsageOverview"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    div-long/2addr v5, v7

    const-wide/16 v7, 0x5

    rem-long/2addr v5, v7

    .line 189
    .local v5, "currentDay":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    int-to-long v7, v3

    .line 190
    .local v7, "deviceSec":J
    cmp-long v3, v5, v7

    if-nez v3, :cond_2

    .line 192
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;

    invoke-direct {v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;-><init>()V

    invoke-virtual {v3, p1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->getOverview(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v2

    .line 193
    .local v9, "overview":Ljava/lang/String;
    move-object v9, v3

    const-string v10, "/storage/sdcard1/Android/data"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    return-object v2

    .line 196
    :cond_0
    const-string v3, ","

    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v10, "="

    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    const-string v10, "^"

    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string v10, "\\|"

    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .end local v9    # "overview":Ljava/lang/String;
    .local v1, "overview":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const v10, 0xc800

    if-le v9, v10, :cond_1

    .line 202
    const-string v9, "Overview too big."

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v9, "return StorageUsageOverview"

    invoke-interface {v4, v0, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    return-object v3

    .line 211
    .end local v1    # "overview":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "currentDay":J
    .end local v7    # "deviceSec":J
    :cond_2
    goto :goto_1

    .line 209
    :catchall_0
    move-exception v1

    .line 210
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    return-object v2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler$1;-><init>()V

    .line 50
    .local v0, "screenBroadcastReceiver":Landroid/content/BroadcastReceiver;
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/4 v2, 0x0

    .line 51
    .local v2, "screenIntentFilter":Landroid/content/IntentFilter;
    move-object v2, v1

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    nop

    .end local v2    # "screenIntentFilter":Landroid/content/IntentFilter;
    return-void

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "SmoothnessHandler"

    const-string/jumbo v4, "registerScreenOffReceiver failed"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->f(Landroid/content/Context;)V

    .line 58
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/os/Bundle;

    .line 91
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 93
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    return-void

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SmoothnessHandler"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;

    monitor-enter v0

    .line 106
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 108
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit v0

    return-void

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "SmoothnessHandler"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .end local v1    # "e":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 105
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "info":Ljava/lang/String;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 124
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a()V

    .line 125
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d()V

    .line 130
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    return-void

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SmoothnessHandler"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static c(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "SmoothnessHandler"

    const-string/jumbo v2, "obtainFluencyUsage"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 141
    return-object v1

    .line 144
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v1

    .line 148
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    .line 149
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->b()Ljava/lang/String;

    move-result-object v3

    .line 148
    const-string v4, "fluencyUsage"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 153
    .local v3, "tinyAppfluency":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const-string v0, "TINYAPP_SMOOTHNESS_SCORE"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v4, "TINYAPP_SMOOTHNESS_APPID"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v6, "APM_APP_TYPE"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v7, "APM_PROCESS"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v8, "APM_TINYAPP_PAGE_SMOOTHNESS"

    invoke-interface {v0, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 162
    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 163
    invoke-interface {v4, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 164
    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 165
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "tinyAppfluency":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    move-result-object v0

    .line 175
    const-string v3, "APP"

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "appFluency":Ljava/lang/String;
    const-string v3, "appFluency"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Ljava/lang/String;Z)V

    .line 180
    return-object v2
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 28
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 64
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SmoothnessHandler"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    return-void

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SmoothnessHandler"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
