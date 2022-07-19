.class final Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$5;
.super Ljava/lang/Object;
.source "TraceDataManager.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 485
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$5;->b:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$5;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x56afef51

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0x2b57081

    if-eq v2, v3, :cond_2

    const v3, 0x6d806863

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "domSize"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "domWidthDepth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "imageScale"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_4

    goto :goto_1

    .line 495
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_1
    return-void

    .line 491
    :cond_5
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    return-void

    .line 498
    :catchall_0
    move-exception v0

    .line 499
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evaluateJavascript onReceiveValue error. name is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 485
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$5;->a(Ljava/lang/String;)V

    return-void
.end method
