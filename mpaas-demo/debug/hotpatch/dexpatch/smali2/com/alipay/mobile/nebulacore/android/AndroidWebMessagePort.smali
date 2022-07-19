.class public Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;
.super Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
.source "AndroidWebMessagePort.java"


# instance fields
.field private a:Landroid/webkit/WebMessagePort;


# direct methods
.method constructor <init>(Landroid/webkit/WebMessagePort;)V
    .locals 0
    .param p1, "msgPort"    # Landroid/webkit/WebMessagePort;

    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/webview/APWebMessagePort;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;->a:Landroid/webkit/WebMessagePort;

    .line 15
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;->a:Landroid/webkit/WebMessagePort;

    invoke-virtual {v0}, Landroid/webkit/WebMessagePort;->close()V

    .line 29
    return-void
.end method

.method public getWebMessagePort()Landroid/webkit/WebMessagePort;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;->a:Landroid/webkit/WebMessagePort;

    return-object v0
.end method

.method public postMessage(Lcom/alipay/mobile/nebula/webview/APWebMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/alipay/mobile/nebula/webview/APWebMessage;

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;->a:Landroid/webkit/WebMessagePort;

    new-instance v1, Landroid/webkit/WebMessage;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebMessage;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebMessagePort;->postMessage(Landroid/webkit/WebMessage;)V

    .line 24
    return-void
.end method

.method public setWebMessageCallback(Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;->setWebMessageCallback(Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;Landroid/os/Handler;)V

    .line 34
    return-void
.end method

.method public setWebMessageCallback(Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;->a:Landroid/webkit/WebMessagePort;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort$1;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;)V

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;Landroid/os/Handler;)V

    .line 44
    return-void
.end method
