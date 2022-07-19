.class public Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;
.super Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;
.source "HomePageRenderWatcher.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;Ljava/util/concurrent/atomic/AtomicLong;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;
    .param p1, "x1"    # Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .line 14
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a()V

    return-void
.end method

.method public final bridge synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 14
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->b()V

    return-void
.end method

.method final c()V
    .locals 0

    .line 49
    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v0, "ret":Ljava/util/Map;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;->b:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;->a:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 35
    .local v1, "cost":J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "homerender"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "homerender:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mylog"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v1    # "cost":J
    :cond_0
    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;->b:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
