.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreateForMultiProcess(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delay:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 206
    const-string v0, "H5UCWebView"

    :try_start_0
    new-instance v1, Landroid/content/MutableContextWrapper;

    .line 207
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, "contextWrapper":Landroid/content/MutableContextWrapper;
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 209
    const-string v2, "create an empty webview for holding render process"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;)V

    # setter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$202(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 211
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setMultiProcessPreCreate()V

    .line 212
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v2

    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebViewClient(Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)V
    invoke-static {v2, v4}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$400(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)V

    .line 214
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v2

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->loadUrl(Ljava/lang/String;)V

    .line 215
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;)V

    sget v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRenderProcessLaunchTimeout30:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 232
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 233
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/WebView;

    .line 234
    .local v2, "webview":Lcom/uc/webview/export/WebView;
    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;)V

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v1    # "contextWrapper":Landroid/content/MutableContextWrapper;
    .end local v2    # "webview":Lcom/uc/webview/export/WebView;
    :cond_0
    goto :goto_0

    .line 252
    :catchall_0
    move-exception v1

    .line 253
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
