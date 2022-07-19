.class Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort$1;
.super Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;
.source "UCWebMessagePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;->setWebMessageCallback(Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;

.field final synthetic val$callback:Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort$1;->val$callback:Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;

    invoke-direct {p0}, Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Lcom/uc/webview/export/WebMessagePort;Lcom/uc/webview/export/WebMessage;)V
    .locals 4
    .param p1, "port"    # Lcom/uc/webview/export/WebMessagePort;
    .param p2, "message"    # Lcom/uc/webview/export/WebMessage;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort$1;->val$callback:Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;-><init>(Lcom/uc/webview/export/WebMessagePort;)V

    new-instance v2, Lcom/alipay/mobile/nebula/webview/APWebMessage;

    invoke-virtual {p2}, Lcom/uc/webview/export/WebMessage;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;->onMessage(Lcom/alipay/mobile/nebula/webview/APWebMessagePort;Lcom/alipay/mobile/nebula/webview/APWebMessage;)V

    .line 42
    return-void
.end method
