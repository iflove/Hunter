.class final Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;
.super Ljava/lang/Object;
.source "TraceDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 314
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->d(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    iget v2, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->d:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    goto :goto_1

    .line 327
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 325
    :catch_0
    move-exception v1

    .line 327
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->f(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->g(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->f(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->h(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V

    .line 336
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->i(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->j(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)I

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->k(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)I

    goto :goto_0

    .line 327
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
