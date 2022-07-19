.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "ANRExtraDog.java"


# instance fields
.field public a:I

.field private final b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private e:I

.field private volatile f:I

.field private volatile g:I

.field private final h:Ljava/lang/Runnable;

.field private i:J

.field private j:J

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->b:Landroid/os/Handler;

    .line 34
    const/16 v0, 0x1388

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->c:I

    .line 36
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->a:I

    .line 38
    const/16 v2, 0x1388

    div-int/2addr v2, v1

    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->d:I

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->e:I

    .line 42
    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->f:I

    .line 44
    const/4 v2, -0x1

    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->g:I

    .line 46
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;)V

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->h:Ljava/lang/Runnable;

    .line 53
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->i:J

    .line 54
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->j:J

    .line 57
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    .line 58
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->l:Ljava/util/LinkedHashMap;

    .line 63
    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->c:I

    .line 64
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->a:I

    .line 65
    div-int/lit16 v1, v0, 0x3e8

    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->d:I

    .line 67
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;

    div-int/lit8 v0, v0, 0x5

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;-><init>(J)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->m:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    .line 28
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->f:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->f:I

    return p1
.end method

.method private a(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "latest":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->l:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

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

    .line 207
    .local v3, "entryTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p3

    if-gtz v6, :cond_0

    .line 208
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 210
    .end local v3    # "entryTime":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 211
    :cond_1
    monitor-exit v1

    .line 213
    return-object v0

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private b(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

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

    .line 220
    .local v3, "entryTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p3

    if-gtz v6, :cond_0

    .line 221
    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v4, " :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .end local v3    # "entryTime":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 229
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 229
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private c(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "latest":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

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

    .line 237
    .local v3, "entryTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p3

    if-gtz v6, :cond_0

    .line 238
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 240
    .end local v3    # "entryTime":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 241
    :cond_1
    monitor-exit v1

    .line 243
    return-object v0

    .line 241
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private c()V
    .locals 7

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ANRExtraDog"

    const-string v2, "doSample"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;->NewMainOnly()Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 177
    .local v2, "anrError":Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 178
    .local v3, "stack":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x5

    if-nez v0, :cond_1

    .line 179
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 187
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v1, "threadsDump":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->l:Ljava/util/LinkedHashMap;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 190
    :try_start_3
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-lt v5, v4, :cond_2

    .line 191
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->l:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4

    .line 197
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->m:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 200
    .end local v1    # "threadsDump":Ljava/lang/String;
    .end local v2    # "anrError":Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
    .end local v3    # "stack":Ljava/lang/String;
    return-void

    .line 198
    :catchall_2
    move-exception v0

    .line 199
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ANRExtraDog"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private d(JJ)Ljava/lang/String;
    .locals 13

    .line 247
    move-object v1, p0

    .line 248
    nop

    .line 249
    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 250
    nop

    .line 251
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 252
    iget-object v3, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 253
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, p1, v7

    if-gez v9, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, p3

    if-gtz v9, :cond_1

    .line 254
    add-int/lit8 v5, v5, 0x1

    .line 255
    iget-object v7, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 256
    nop

    .line 257
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 258
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v8, v7

    .line 260
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_1
    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 265
    int-to-double v8, v7

    int-to-double v10, v5

    div-double/2addr v8, v10

    .line 266
    if-lt v7, v4, :cond_3

    const-wide v10, 0x3fe3333333333333L    # 0.6

    cmpl-double v12, v8, v10

    if-lez v12, :cond_3

    .line 267
    nop

    .line 268
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move v4, v7

    .line 270
    :cond_3
    goto :goto_1

    .line 271
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    if-gtz v4, :cond_5

    .line 274
    invoke-direct/range {p0 .. p4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->c(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_5
    return-object v3

    .line 271
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 15

    const-string v0, "1002"

    .line 73
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->f:I

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->g:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_f

    .line 74
    invoke-static {}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-nez v1, :cond_f

    .line 75
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "waitCount:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->e:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ANRExtraDog"

    invoke-interface {v1, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->i:J

    cmp-long v7, v1, v4

    if-gtz v7, :cond_1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->i:J

    .line 79
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->m:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->a()V

    .line 82
    :cond_1
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->e:I

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->d:I

    const-string v4, "ANRMonitor is running, no processing here."

    if-eq v1, v2, :cond_4

    mul-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->j:J

    .line 155
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->a:Z

    if-eqz v0, :cond_3

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 158
    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->c()V

    goto/16 :goto_4

    .line 84
    :cond_4
    :goto_0
    sget-boolean v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/ANRMonitor;->a:Z

    if-eqz v1, :cond_5

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->j:J

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 88
    :cond_5
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->c()V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->j:J

    .line 91
    :try_start_0
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->i:J

    invoke-direct {p0, v4, v5, v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->d(JJ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 92
    .local v4, "finalStack":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 93
    const-string/jumbo v1, "null"

    move-object v4, v1

    .line 96
    :cond_6
    move-object v1, v0

    .line 97
    .local v1, "errorCodeToReport":Ljava/lang/String;
    iget v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->e:I

    iget v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->d:I

    if-ne v5, v7, :cond_7

    .line 98
    move-object v1, v0

    goto :goto_1

    .line 99
    :cond_7
    mul-int/lit8 v7, v7, 0x2

    if-ne v5, v7, :cond_8

    .line 100
    const-string v0, "1116"

    move-object v1, v0

    .line 102
    :cond_8
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v2

    .line 103
    .local v5, "mParams":Ljava/util/Map;
    move-object v5, v0

    const-string/jumbo v7, "stackFrame"

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "errorCode"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v7, "viewID"

    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v2

    .line 106
    .local v7, "viewId":Ljava/lang/String;
    move-object v7, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 107
    const-string v0, "currentPage"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v7}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->b()Ljava/lang/String;

    move-result-object v0

    move-object v8, v2

    .line 111
    .local v8, "currentUrl":Ljava/lang/String;
    move-object v8, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 112
    const-string v0, "currentUrl"

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 116
    .end local v8    # "currentUrl":Ljava/lang/String;
    :cond_9
    move-object v8, v2

    :cond_a
    :goto_2
    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v8, "bundleUpdates":Ljava/lang/String;
    move-object v8, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 118
    const-string v0, "bundleUpdates"

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_b
    iget-wide v9, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->i:J

    iget-wide v11, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->j:J

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->a(JJ)Ljava/lang/String;

    move-result-object v0

    move-object v9, v2

    .line 121
    .local v9, "threadsDump":Ljava/lang/String;
    move-object v9, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 122
    const-string/jumbo v0, "threadsTrace"

    invoke-interface {v5, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_c
    iget-wide v10, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->i:J

    iget-wide v12, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->j:J

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->b(JJ)Ljava/lang/String;

    move-result-object v0

    move-object v10, v2

    .line 125
    .local v10, "stacks":Ljava/lang/String;
    move-object v10, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 126
    const-string v0, "historyStacks"

    invoke-interface {v5, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_d
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->m:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;

    iget-wide v11, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->i:J

    iget-wide v13, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->j:J

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->a(JJ)Z

    move-result v0

    .line 129
    .local v0, "isCpuBusy":Z
    const-string v11, "cpuBusy"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v11, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->m:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;

    invoke-virtual {v11}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->b()Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v2, "cpuRateInfo":Ljava/lang/String;
    move-object v2, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 132
    const-string v11, "cpuRate"

    invoke-interface {v5, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "startTime:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->i:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, "timePeriod":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " endTime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->j:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 137
    const-string/jumbo v12, "timePeriod"

    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v12

    invoke-interface {v12, v5}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->anr(Ljava/util/Map;)V

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "report:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v6, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v12

    const-string v13, "applog"

    invoke-interface {v12, v13, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "isCpuBusy":Z
    .end local v1    # "errorCodeToReport":Ljava/lang/String;
    .end local v2    # "cpuRateInfo":Ljava/lang/String;
    .end local v4    # "finalStack":Ljava/lang/String;
    .end local v5    # "mParams":Ljava/util/Map;
    .end local v7    # "viewId":Ljava/lang/String;
    .end local v8    # "bundleUpdates":Ljava/lang/String;
    .end local v9    # "threadsDump":Ljava/lang/String;
    .end local v10    # "stacks":Ljava/lang/String;
    .end local v11    # "timePeriod":Ljava/lang/String;
    goto :goto_3

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_3
    nop

    .line 161
    :goto_4
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->e:I

    goto :goto_5

    .line 163
    :cond_f
    iput v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->e:I

    .line 164
    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->i:J

    .line 165
    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->j:J

    .line 168
    :goto_5
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->f:I

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->g:I

    .line 169
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method
