.class Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort$1;
.super Landroid/webkit/WebMessagePort$WebMessageCallback;
.source "AndroidWebMessagePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;->setWebMessageCallback(Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort$1;->b:Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort$1;->a:Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;

    invoke-direct {p0}, Landroid/webkit/WebMessagePort$WebMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/webkit/WebMessagePort;Landroid/webkit/WebMessage;)V
    .locals 4
    .param p1, "port"    # Landroid/webkit/WebMessagePort;
    .param p2, "message"    # Landroid/webkit/WebMessage;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort$1;->a:Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;-><init>(Landroid/webkit/WebMessagePort;)V

    new-instance v2, Lcom/alipay/mobile/nebula/webview/APWebMessage;

    invoke-virtual {p2}, Landroid/webkit/WebMessage;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;->onMessage(Lcom/alipay/mobile/nebula/webview/APWebMessagePort;Lcom/alipay/mobile/nebula/webview/APWebMessage;)V

    .line 42
    return-void
.end method
