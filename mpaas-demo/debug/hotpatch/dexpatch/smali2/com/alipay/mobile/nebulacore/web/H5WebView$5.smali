.class Lcom/alipay/mobile/nebulacore/web/H5WebView$5;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
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
.field final synthetic a:Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/web/H5WebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 708
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$5;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$5;->a:Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 708
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView$5;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$5;->a:Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;->onReceiveValue(Ljava/lang/String;)V

    .line 712
    return-void
.end method
