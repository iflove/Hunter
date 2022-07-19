.class Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener$1;
.super Ljava/lang/Object;
.source "H5CommonScreenshotListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;->onScreenShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener$1;->a:Lcom/alipay/mobile/nebulacore/util/H5CommonScreenshotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "H5CommonScreenshotListener"

    .line 28
    :try_start_0
    const-string v1, "h5_flush_ucLog"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "value":Ljava/lang/String;
    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    move-object v4, v3

    .line 31
    .local v4, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v4, v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    move-object v5, v3

    .line 33
    .local v5, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v5, v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "flushUcLog"

    invoke-interface {v5, v2, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 40
    .end local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v5    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    move-object v3, v4

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->flushAppLog()V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->getAllThreadsTraces()Ljava/util/List;

    move-result-object v2

    .line 44
    .local v3, "traces":Ljava/util/List;
    move-object v3, v2

    if-eqz v2, :cond_2

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "All Threads Traces: ###"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47
    .local v4, "trace":Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v4    # "trace":Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v1    # "value":Ljava/lang/String;
    .end local v3    # "traces":Ljava/util/List;
    :cond_2
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
