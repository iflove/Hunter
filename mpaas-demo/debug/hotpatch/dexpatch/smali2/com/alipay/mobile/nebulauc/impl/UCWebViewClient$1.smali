.class Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient$1;
.super Ljava/lang/Object;
.source "UCWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->onRenderProcessGone(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/extension/RenderProcessGoneDetail;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    .line 226
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->access$000(Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->access$000(Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->reload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    .line 234
    .local v0, "thr":Ljava/lang/Throwable;
    const-string v1, "H5UCWebViewClient"

    const-string v2, "uc webview reload failed!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
