.class public Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
.super Ljava/lang/Object;
.source "DetectedEntity.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:J


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    return-wide v0
.end method

.method public final c()V
    .locals 1

    .line 72
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d:I

    .line 73
    return-void
.end method

.method public final d()V
    .locals 1

    .line 76
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->e:I

    .line 77
    return-void
.end method

.method public final e()Z
    .locals 11

    .line 80
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d:I

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->f:I

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detectLeak: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c:Ljava/lang/String;

    const-string v2, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 84
    return v2

    .line 87
    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->f:I

    if-gez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "detectLeak: expect < 0, errors occurred."

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v2

    .line 93
    :cond_1
    const-wide/16 v3, 0x0

    if-lez v0, :cond_2

    .line 94
    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->h:J

    .line 95
    return v2

    .line 98
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 100
    .local v5, "nowTime":J
    iget-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->h:J

    cmp-long v0, v7, v3

    if-nez v0, :cond_3

    .line 101
    iput-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->h:J

    .line 102
    return v2

    .line 104
    :cond_3
    sub-long v7, v5, v7

    sget-wide v9, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->b:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_4

    .line 105
    return v2

    .line 109
    :cond_4
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "detectLeak: actual = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    cmp-long v7, v0, v3

    if-gez v7, :cond_5

    .line 114
    return v2

    .line 118
    :cond_5
    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->f:I

    int-to-long v3, v3

    cmp-long v7, v0, v3

    if-nez v7, :cond_6

    .line 119
    return v2

    .line 122
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 196
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d:I

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 196
    const-string v1, ","

    invoke-static {v1, v0}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->concatArray(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
