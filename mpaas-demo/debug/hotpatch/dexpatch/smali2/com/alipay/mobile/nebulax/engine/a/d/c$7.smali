.class Lcom/alipay/mobile/nebulax/engine/a/d/c$7;
.super Ljava/lang/Object;
.source "NXWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/c;->onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$7;->b:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$7;->a:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 869
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$7;->a:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    if-eqz p1, :cond_0

    .line 870
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->cancel()V

    .line 872
    :cond_0
    return-void
.end method
