.class final Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;
.super Ljava/lang/Object;
.source "FpsCollector.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 8
    .param p1, "frameTimeNanos"    # J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 43
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 45
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 46
    .local v2, "timeSpan":J
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->b(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)I

    .line 48
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->c(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 49
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->d(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-double v4, v4

    long-to-double v6, v2

    div-double/2addr v4, v6

    .line 50
    .local v4, "fps":D
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    double-to-int v7, v4

    iput v7, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a:I

    .line 51
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-static {v6, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;J)J

    .line 52
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->e(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)I

    .line 55
    .end local v2    # "timeSpan":J
    .end local v4    # "fps":D
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;J)J

    .line 59
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 61
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v2

    .line 63
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method
