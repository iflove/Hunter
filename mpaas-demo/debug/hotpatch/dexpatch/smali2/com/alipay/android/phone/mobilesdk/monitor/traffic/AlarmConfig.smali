.class public Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;
.super Ljava/lang/Object;
.source "AlarmConfig.java"


# instance fields
.field private a:J

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/32 v0, 0xc8000

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->a:J

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->a:J

    return-wide v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    return-object v1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "domainLimited":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    return-object v2

    .line 52
    .end local v2    # "domainLimited":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 53
    :cond_2
    return-object v1
.end method

.method public final a(J)V
    .locals 0
    .param p1, "commonLengthLimit"    # J

    .line 21
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->a:J

    .line 22
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "limit"    # J

    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .param p1, "domainLengthLimits"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->b:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public final b(Ljava/lang/String;)J
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    .line 58
    .local v1, "limit":Ljava/lang/Long;
    move-object v1, v0

    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlarmConfig{commonLengthLimit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", domainLengthLimits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/AlarmConfig;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
