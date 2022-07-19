.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;
.super Ljava/lang/Object;
.source "UnitIdController.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "unitId"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->b:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->c:J

    .line 38
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d:J

    .line 42
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->e:J

    .line 49
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private a(Z)V
    .locals 0
    .param p1, "recording"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->b:Z

    .line 66
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(JZ)V
    .locals 4
    .param p1, "duration"    # J
    .param p3, "isActivityOnCreate"    # Z

    .line 102
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    if-nez p3, :cond_0

    .line 104
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->c:J

    long-to-double v0, v0

    invoke-static {p1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->c:J

    .line 107
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "control"    # Ljava/lang/String;

    .line 81
    const-string v0, "UNIT_MONITOR_START"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a(Z)V

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->e:J

    return-void

    .line 86
    :cond_0
    const-string v0, "UNIT_MONITOR_END"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a(Z)V

    .line 89
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 90
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->e:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d:J

    .line 94
    :cond_1
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "state"    # Lorg/json/JSONObject;

    .line 139
    :try_start_0
    const-string/jumbo v0, "mTotalLagValue"

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v0, "mTotalRecordDuration"

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UnitIdController"

    const-string/jumbo v3, "saveState error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v0    # "e":Lorg/json/JSONException;
    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "savedState"    # Lorg/json/JSONObject;

    .line 151
    if-nez p1, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    const-string/jumbo v0, "mTotalLagValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "mTotalRecordDuration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a(Z)V

    .line 157
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->c:J

    .line 158
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d:J

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->e:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UnitIdController"

    const-string/jumbo v3, "restoreState error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 6

    .line 115
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 117
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->e:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d:J

    .line 119
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->e:J

    .line 122
    :cond_1
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->c:J

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a(JJ)D

    move-result-wide v0

    .line 124
    .local v0, "score":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v2, v0

    if-gtz v4, :cond_2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_2

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%.2f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 127
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public final d()V
    .locals 2

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->a(Z)V

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->c:J

    .line 172
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->d:J

    .line 173
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/UnitIdController;->e:J

    .line 174
    return-void
.end method
