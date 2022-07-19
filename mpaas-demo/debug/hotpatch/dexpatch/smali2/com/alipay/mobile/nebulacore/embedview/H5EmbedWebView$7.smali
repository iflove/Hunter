.class Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5EmbedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/atomic/AtomicLong;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 733
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->d:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->c:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 744
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PageProgress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 746
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v3, "progress"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 747
    .local v1, "progress":I
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 748
    return v2

    .line 750
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 751
    .local v5, "now":J
    move-wide v5, v3

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x32

    cmp-long v9, v3, v7

    if-gez v9, :cond_1

    .line 752
    return v2

    .line 754
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 755
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->c:Landroid/os/Handler;

    new-instance v4, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7$1;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7$1;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 764
    .end local v1    # "progress":I
    .end local v5    # "now":J
    goto :goto_1

    :cond_2
    const-string v1, "h5PageStarted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 765
    const-string v1, "h5ToolbarReload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 780
    :cond_3
    const-string v1, "h5PageFinished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 781
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 782
    return v2

    .line 784
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 785
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->c:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7$3;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7$3;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 766
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 767
    return v2

    .line 769
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 770
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;->c:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7$2;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    :cond_7
    :goto_1
    return v2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 736
    const-string v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 737
    const-string v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 738
    const-string v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string v0, "h5ToolbarReload"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 740
    return-void
.end method
