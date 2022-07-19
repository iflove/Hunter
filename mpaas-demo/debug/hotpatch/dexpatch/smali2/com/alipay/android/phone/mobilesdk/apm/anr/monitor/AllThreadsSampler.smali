.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;
.super Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;
.source "AllThreadsSampler.java"


# static fields
.field private static final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "sampleMainIntervalMillis"    # J

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;-><init>(JB)V

    .line 21
    return-void
.end method

.method private constructor <init>(JB)V
    .locals 0
    .param p1, "sampleIntervalMillis"    # J

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;-><init>(J)V

    .line 17
    const/4 p3, 0x3

    iput p3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->e:I

    .line 25
    iput p3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->e:I

    .line 26
    return-void
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 7
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "latest":Ljava/lang/String;
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->d:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 31
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 32
    .local v3, "entryTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p0, v4

    if-gez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-gtz v6, :cond_0

    .line 33
    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 35
    .end local v3    # "entryTime":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 36
    :cond_1
    monitor-exit v1

    .line 38
    return-object v0

    .line 36
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected final c()V
    .locals 4

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ANRMonitor"

    const-string v2, "AllThreadsSampler.doSample"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 46
    .local v1, "threadsDump":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->d:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AllThreadsSampler;->e:I

    if-lt v2, v3, :cond_0

    if-lez v3, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 54
    :cond_1
    return-void
.end method
