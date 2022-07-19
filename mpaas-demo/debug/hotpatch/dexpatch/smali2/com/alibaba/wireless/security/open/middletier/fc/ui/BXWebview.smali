.class public Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;


# instance fields
.field a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    return-void
.end method


# virtual methods
.method public bxDestroy()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->removeAllViews()V

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->destroy()V

    return-void
.end method

.method public bxLoadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bxSetUp(Landroid/content/Context;Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;

    new-instance p1, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview$1;

    invoke-direct {p1, p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview$1;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
