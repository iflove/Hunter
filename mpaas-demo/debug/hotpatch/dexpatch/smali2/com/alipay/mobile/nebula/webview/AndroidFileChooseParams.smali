.class public Lcom/alipay/mobile/nebula/webview/AndroidFileChooseParams;
.super Ljava/lang/Object;
.source "AndroidFileChooseParams.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APFileChooserParams;


# instance fields
.field private final mParams:Landroid/webkit/WebChromeClient$FileChooserParams;


# direct methods
.method public constructor <init>(Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 0
    .param p1, "params"    # Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/nebula/webview/AndroidFileChooseParams;->mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 19
    return-void
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/AndroidFileChooseParams;->mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptTypes()[Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/AndroidFileChooseParams;->mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilenameHint()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/AndroidFileChooseParams;->mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getFilenameHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/AndroidFileChooseParams;->mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/AndroidFileChooseParams;->mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureEnabled()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/AndroidFileChooseParams;->mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v0

    return v0
.end method
