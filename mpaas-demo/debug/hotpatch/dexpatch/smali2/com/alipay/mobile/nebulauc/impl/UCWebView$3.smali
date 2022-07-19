.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$3;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->releasePreCreateWebViewForMultiProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 269
    const-string v0, "H5UCWebView"

    const-string v1, "destroy non isolate static webview"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :try_start_0
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->destroy()V

    .line 273
    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$202(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_0
    goto :goto_0

    .line 275
    :catchall_0
    move-exception v1

    .line 276
    .local v1, "thr":Ljava/lang/Throwable;
    const-string v2, "destroy preload multi process ucwebview error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
