.class final Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;
.super Ljava/lang/Object;
.source "TinyAppSubPackagePlugin.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;)V
    .locals 1

    .line 332
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->a:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->b:Ljava/util/concurrent/CountDownLatch;

    .line 335
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->c:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;

    .line 332
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;-><init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;)V

    return-void
.end method

.method private a()Lcom/alibaba/fastjson/JSONObject;
    .locals 6

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 361
    .local v0, "start":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->b:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResultDispatchFuture wait task dispatch for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TinyAppSubPackagePlugin"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->c:Lcom/alibaba/fastjson/JSONObject;

    return-object v2
.end method

.method private a(JLjava/util/concurrent/TimeUnit;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 369
    .local v0, "start":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResultDispatchFuture wait task dispatch for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TinyAppSubPackagePlugin"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->c:Lcom/alibaba/fastjson/JSONObject;

    return-object v2
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    monitor-enter p0

    .line 338
    :try_start_0
    const-string v0, "TinyAppSubPackagePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResultDispatchFuture set result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 337
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;
    .end local p1    # "result":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->a()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 332
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public final isDone()Z
    .locals 5

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
