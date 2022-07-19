.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UCStartupPerformanceCallback"
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
.field private onReceived:Z

.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

.field private ucPerfData:Ljava/lang/String;

.field private ucPerfDataCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V
    .locals 0

    .line 1698
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1702
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->ucPerfData:Ljava/lang/String;

    .line 1704
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->onReceived:Z

    .line 1706
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->ucPerfDataCallbackList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;

    .line 1698
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    return-void
.end method


# virtual methods
.method public add(Landroid/webkit/ValueCallback;)V
    .locals 3
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1729
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->onReceived:Z

    if-eqz v0, :cond_0

    .line 1730
    if-eqz p1, :cond_1

    .line 1731
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->ucPerfData:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->ucPerfDataCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1738
    :cond_1
    :goto_0
    goto :goto_1

    .line 1736
    :catchall_0
    move-exception v0

    .line 1737
    .local v0, "thr":Ljava/lang/Throwable;
    const-string v1, "H5UCWebView"

    const-string v2, "getStartupPerformanceStatistics error "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1739
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1698
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1712
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->ucPerfData:Ljava/lang/String;

    .line 1713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->onReceived:Z

    .line 1714
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->ucPerfDataCallbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1715
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ValueCallback;

    .line 1716
    .local v1, "valueCallback":Landroid/webkit/ValueCallback;
    if-eqz v1, :cond_0

    .line 1717
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->ucPerfData:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1719
    .end local v1    # "valueCallback":Landroid/webkit/ValueCallback;
    :cond_0
    goto :goto_0

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->ucPerfDataCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    goto :goto_1

    .line 1722
    :catchall_0
    move-exception v0

    .line 1723
    .local v0, "thr":Ljava/lang/Throwable;
    const-string v1, "H5UCWebView"

    const-string v2, "getStartupPerformanceStatistics error "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1725
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
