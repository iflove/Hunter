.class Lcom/alipay/mobile/nebulax/engine/a/d/c$4;
.super Ljava/lang/Object;
.source "NXWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/c;->onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APJsResult;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$4;->b:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$4;->a:Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 798
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$4;->a:Lcom/alipay/mobile/nebula/webview/APJsResult;

    if-eqz p1, :cond_0

    .line 799
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 801
    :cond_0
    return-void
.end method
