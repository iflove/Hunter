.class Lcom/alipay/mobile/nebulax/engine/a/d/c$11;
.super Ljava/lang/Object;
.source "NXWebChromeClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/c;->onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APJsResult;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

.field final synthetic c:Lcom/alipay/mobile/nebulax/engine/a/d/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$11;->c:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$11;->a:Lcom/alipay/mobile/nebula/webview/APJsResult;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$11;->b:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 678
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$11;->a:Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APJsResult;->confirm()V

    .line 679
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$11;->b:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->dismiss()V

    .line 680
    return-void
.end method
