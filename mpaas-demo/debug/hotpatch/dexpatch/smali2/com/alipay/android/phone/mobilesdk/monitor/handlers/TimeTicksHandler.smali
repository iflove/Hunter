.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;
.super Ljava/lang/Object;
.source "TimeTicksHandler.java"


# static fields
.field private static final a:J

.field private static b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;


# instance fields
.field private c:Landroid/content/Context;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->c:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;
    .locals 2

    .line 29
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;

    if-eqz v0, :cond_0

    .line 32
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;

    .line 25
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 9

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 43
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->d:J

    .line 44
    return-void

    .line 42
    :cond_0
    move-wide v2, v4

    .line 48
    .local v2, "deltaElasped":J
    monitor-enter p0

    .line 49
    :try_start_0
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->d:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 51
    move-wide v2, v4

    sget-wide v6, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->a:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 52
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->d:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->c:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/alipay/tianyan/mobilesdk/TimeTickTriggerDispatcher;->onTimeTickTrigger(Landroid/content/Context;J)V

    .line 58
    return-void

    .line 55
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
