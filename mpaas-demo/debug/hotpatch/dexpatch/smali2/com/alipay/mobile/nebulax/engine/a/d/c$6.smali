.class Lcom/alipay/mobile/nebulax/engine/a/d/c$6;
.super Ljava/lang/Object;
.source "NXWebChromeClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;


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

    .line 856
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$6;->b:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$6;->a:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$6;->a:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    if-eqz v0, :cond_0

    .line 860
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->cancel()V

    .line 863
    :cond_0
    return-void
.end method
