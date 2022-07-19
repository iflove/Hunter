.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;
.super Ljava/lang/Object;
.source "UnitTypeController.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "typeId"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->a:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    .line 42
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UnitTypeController typeId is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(JZ)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "isActivityOnCreate"    # Z

    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;

    .line 76
    .local v1, "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;
    move-object v1, v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a(JZ)V

    .line 79
    .end local v1    # "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;
    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "unitId"    # Ljava/lang/String;
    .param p2, "control"    # Ljava/lang/String;

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;

    const/4 v1, 0x0

    .line 62
    .local v1, "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    invoke-virtual {v1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a(Ljava/lang/String;)V

    .line 67
    return-void

    .line 59
    .end local v1    # "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;
    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "state"    # Lorg/json/JSONObject;

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;

    .line 109
    .local v1, "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v2, "childState":Lorg/json/JSONObject;
    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a(Lorg/json/JSONObject;)V

    .line 111
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "UnitTypeController"

    const-string/jumbo v6, "saveState error"

    invoke-interface {v4, v5, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v1    # "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;
    .end local v2    # "childState":Lorg/json/JSONObject;
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "typeScores":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;

    .line 89
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->c()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v3, "score":Ljava/lang/String;
    move-object v3, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 94
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .end local v3    # "score":Ljava/lang/String;
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    :cond_3
    return-object v2
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "savedState"    # Lorg/json/JSONObject;

    .line 122
    if-nez p1, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 126
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "unitId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 130
    .local v3, "unitIdState":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 133
    goto :goto_1

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "UnitTypeController"

    const-string/jumbo v6, "restoreState error"

    invoke-interface {v4, v5, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;

    .line 136
    .local v1, "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;
    move-object v1, v4

    if-nez v4, :cond_1

    .line 137
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;

    invoke-direct {v4, v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 138
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->b(Lorg/json/JSONObject;)V

    .line 142
    .end local v1    # "controller":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;
    .end local v2    # "unitId":Ljava/lang/String;
    .end local v3    # "unitIdState":Lorg/json/JSONObject;
    :cond_2
    goto :goto_0

    .line 143
    :cond_3
    return-void
.end method

.method public final c()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;

    .line 151
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d()V

    .line 152
    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitTypeController;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    return-void
.end method
