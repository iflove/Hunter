.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;
.super Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;
.source "MainStackSampler.java"


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

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "sampleMainIntervalMillis"    # J

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;-><init>(JB)V

    .line 22
    return-void
.end method

.method private constructor <init>(JB)V
    .locals 0
    .param p1, "sampleIntervalMillis"    # J

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;-><init>(J)V

    .line 18
    const/16 p3, 0xa

    iput p3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->e:I

    .line 26
    iput p3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->e:I

    .line 27
    return-void
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 7
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->d:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 32
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

    .line 33
    .local v3, "entryTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p0, v4

    if-gez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-gtz v6, :cond_0

    .line 34
    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v4, " :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .end local v3    # "entryTime":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 42
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static b(JJ)Ljava/lang/String;
    .locals 12

    .line 60
    nop

    .line 61
    nop

    .line 62
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->d:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 63
    nop

    .line 64
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 66
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, p0, v6

    if-gez v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, p2

    if-gtz v8, :cond_1

    .line 67
    add-int/lit8 v4, v4, 0x1

    .line 68
    sget-object v6, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 69
    nop

    .line 70
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 71
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v7, v6

    .line 73
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_1
    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 78
    int-to-double v7, v6

    int-to-double v9, v4

    div-double/2addr v7, v9

    .line 79
    if-lt v6, v3, :cond_3

    const-wide v9, 0x3fe3333333333333L    # 0.6

    cmpl-double v11, v7, v9

    if-lez v11, :cond_3

    .line 80
    nop

    .line 81
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v3, v6

    .line 83
    :cond_3
    goto :goto_1

    .line 84
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-gtz v3, :cond_5

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->c(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_5
    return-object v2

    .line 84
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static c(JJ)Ljava/lang/String;
    .locals 7
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "latest":Ljava/lang/String;
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->d:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 49
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

    .line 50
    .local v3, "entryTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p0, v4

    if-gez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-gtz v6, :cond_0

    .line 51
    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 53
    .end local v3    # "entryTime":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 54
    :cond_1
    monitor-exit v1

    .line 56
    return-object v0

    .line 54
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

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ANRMonitor"

    const-string v2, "MainStackSampler.doSample"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;->NewMainOnly()Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    .local v1, "stack":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->d:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/MainStackSampler;->e:I

    if-lt v2, v3, :cond_0

    if-lez v3, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 108
    :cond_1
    return-void
.end method
