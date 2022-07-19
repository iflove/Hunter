.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;
.super Ljava/lang/Object;
.source "SmoothnessEventHandler.java"


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->b:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    .line 57
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->b()V

    .line 58
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SmoothnessEventHandler init with null context!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    .line 44
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 40
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized b()V
    .locals 11

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "UNIT_FLUENCY_LAST_RESET_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 146
    .local v0, "lastResetTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    .line 147
    const/4 v2, 0x1

    invoke-virtual {p0, v6, v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 150
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "UNIT_FLUENCY_STATE"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .local v2, "savedStateString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 153
    .local v3, "savedState":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 154
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v4

    goto :goto_0

    .line 156
    :catch_0
    move-exception v4

    .line 157
    .local v4, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v7, "SmoothnessEventHandler"

    const-string/jumbo v8, "restoreState error"

    invoke-interface {v5, v7, v8, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 158
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    nop

    .line 159
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 160
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 161
    .local v4, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    .local v5, "unitType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 165
    .local v7, "unitTypeState":Lorg/json/JSONObject;
    :try_start_4
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v8

    .line 168
    goto :goto_3

    .line 166
    :catch_1
    move-exception v6

    .line 167
    .local v6, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string v9, "SmoothnessEventHandler"

    const-string/jumbo v10, "restoreState error"

    invoke-interface {v8, v9, v10, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_3
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 170
    iget-object v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;

    .line 171
    .local v6, "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    move-object v6, v8

    if-nez v8, :cond_2

    .line 172
    new-instance v8, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;

    invoke-direct {v8, v5}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 173
    iget-object v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_2
    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b(Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 177
    .end local v5    # "unitType":Ljava/lang/String;
    .end local v6    # "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    .end local v7    # "unitTypeState":Lorg/json/JSONObject;
    :cond_3
    goto :goto_2

    .line 179
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_4
    monitor-exit p0

    return-void

    .line 143
    .end local v0    # "lastResetTime":J
    .end local v2    # "savedStateString":Ljava/lang/String;
    .end local v3    # "savedState":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .line 101
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;

    const/4 v2, 0x0

    move-object v3, v2

    .line 103
    .local v3, "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 104
    monitor-exit v0

    return-object v2

    .line 103
    :cond_0
    move-object v1, v2

    .line 107
    .local v1, "typeScore":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 109
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Ljava/lang/String;Z)V

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    monitor-exit v0

    return-object v1

    .line 114
    :cond_1
    monitor-exit v0

    return-object v2

    .line 115
    .end local v1    # "typeScore":Ljava/lang/String;
    .end local v3    # "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a()V
    .locals 9

    .line 122
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    monitor-enter v0

    .line 123
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v1, "totalState":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;

    .line 125
    .local v3, "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v4, "childState":Lorg/json/JSONObject;
    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->a(Lorg/json/JSONObject;)V

    .line 127
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_0

    .line 129
    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v5

    .line 131
    .local v5, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "SmoothnessEventHandler"

    const-string/jumbo v8, "saveState error"

    invoke-interface {v6, v7, v8, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v3    # "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    .end local v4    # "childState":Lorg/json/JSONObject;
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "UNIT_FLUENCY_STATE"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    .end local v1    # "totalState":Lorg/json/JSONObject;
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final a(JZ)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "isActivityOnCreate"    # Z

    .line 89
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;

    .line 91
    invoke-virtual {v2, p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->a(JZ)V

    .line 92
    goto :goto_0

    .line 93
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

.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "params"    # Landroid/os/Bundle;

    .line 65
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    monitor-enter v0

    .line 66
    if-nez p1, :cond_0

    .line 67
    :try_start_0
    monitor-exit v0

    return-void

    .line 69
    :cond_0
    const-string v1, "SMOOTH_MONITOR_UNIT_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "unitType":Ljava/lang/String;
    const-string v2, "SMOOTH_MONITOR_UNIT_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "unitId":Ljava/lang/String;
    const-string v3, "UNIT_MONITOR_CONTROL"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "control":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;

    const/4 v5, 0x0

    .line 76
    .local v5, "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    move-object v5, v4

    if-nez v4, :cond_2

    .line 77
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;

    invoke-direct {v4, v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    .line 78
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2
    invoke-virtual {v5, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v1    # "unitType":Ljava/lang/String;
    .end local v2    # "unitId":Ljava/lang/String;
    .end local v3    # "control":Ljava/lang/String;
    .end local v5    # "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    monitor-exit v0

    return-void

    .line 73
    .restart local v1    # "unitType":Ljava/lang/String;
    .restart local v2    # "unitId":Ljava/lang/String;
    .restart local v3    # "control":Ljava/lang/String;
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 81
    .end local v1    # "unitType":Ljava/lang/String;
    .end local v2    # "unitId":Ljava/lang/String;
    .end local v3    # "control":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "resetAll"    # Z

    .line 185
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    monitor-enter v0

    .line 186
    if-eqz p2, :cond_1

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;

    .line 189
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->c()V

    .line 190
    goto :goto_0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;

    const/4 v2, 0x0

    .line 195
    .local v2, "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->c()V

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v2    # "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a()V

    .line 202
    if-eqz p2, :cond_3

    .line 204
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "UNIT_FLUENCY_LAST_RESET_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
