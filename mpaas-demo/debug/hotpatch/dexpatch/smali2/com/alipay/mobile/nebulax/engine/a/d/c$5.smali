.class Lcom/alipay/mobile/nebulax/engine/a/d/c$5;
.super Ljava/lang/Object;
.source "NXWebChromeClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;


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

.field final synthetic b:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

.field final synthetic c:Lcom/alipay/mobile/nebulax/engine/a/d/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$5;->c:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$5;->a:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$5;->b:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1

    .line 850
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$5;->a:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    if-eqz p1, :cond_0

    .line 851
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$5;->b:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->getInputContent()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->confirm(Ljava/lang/String;)V

    .line 853
    :cond_0
    return-void
.end method
